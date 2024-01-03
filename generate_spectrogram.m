file_path = 'data_from_simulation/output_power.csv'
data = readmatrix(file_path); 

fid = fopen(file_path, 'r');
header = fgetl(fid);
fclose(fid);
column_names = strsplit(header, ','); 

name_count = containers.Map('KeyType', 'char', 'ValueType', 'double');

for i = 1:size(data, 2)
    column_data = data(:, i);

    column_data(~isfinite(column_data)) = 0.0;

    column_data = column_data';

    fs = 100;

    window = hann(256);
    noverlap = 128;
    nfft = 512;
    [S, F, T] = spectrogram(column_data, window, noverlap, nfft, fs);

    % Plotting the spectrogram
    figure('Position', [100, 100, 800, 600]);
    imagesc(T, F, 10*log10(abs(S) + eps)); % Taking log and adding epsilon to avoid log(0)
    axis xy;
    colormap jet; 

    current_name = column_names{i};

    % saving file
    if isKey(name_count, current_name)
        name_count(current_name) = name_count(current_name) + 1;
    else
        name_count(current_name) = 1;
    end

    if name_count(current_name) > 1
        column_name = sprintf('%s.%d.png', current_name, name_count(current_name));
    else
        column_name = sprintf('%s.png', current_name);
    end
    saveas(gcf, column_name);
    close(gcf);
end
