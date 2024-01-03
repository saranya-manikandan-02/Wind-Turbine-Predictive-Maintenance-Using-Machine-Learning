imageFolder = fullfile(pwd, 'data_as_images');
    ...
    %'DATA', 'output_power');
imds = imageDatastore(imageFolder, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

imds = imageDatastore(imageFolder, ...
    'IncludeSubfolders', true, ...
    'LabelSource', 'foldernames', ...
    'ReadFcn', @(filename)imresize(imread(filename), [32 32]));


[trainingSet, validationSet] = splitEachLabel(imds, 0.7, 'random');


layers = [
    imageInputLayer([32 32 3]) 
    convolution2dLayer(5, 20)
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)
    convolution2dLayer(5, 50)
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)
    fullyConnectedLayer(100)
    reluLayer
    fullyConnectedLayer(2)  % Two classes: 'highly' and 'mildly'
    softmaxLayer
    classificationLayer];


options = trainingOptions('sgdm', ...
    'InitialLearnRate', 0.01, ...
    'MaxEpochs', 10, ...
    'ValidationData', validationSet, ...
    'ValidationFrequency', 3, ...
    'Shuffle', 'every-epoch', ...
    'Verbose', true, ...
    'MiniBatchSize', 50);  

net = trainNetwork(trainingSet, layers, options);