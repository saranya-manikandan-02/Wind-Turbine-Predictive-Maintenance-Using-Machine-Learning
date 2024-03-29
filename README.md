# Wind-Turbine-Predictive-Maintenance-Using-Machine-Learning
This project explores the application of machine learning for predictive maintenance of wind turbines, focusing on the crucial geartrain component. With 76% of wind turbine failures occurring in the gearbox, this study investigates its fault scenarios and proposes a predictive maintenance system. Our project emphasis lies in the adaptability of the system in addressing faults. For highly faulty scenarios, our implementation allowed seamless gear changes to optimize performance and mitigate risks. Conversely, in cases of mild faults, the system prioritized continued operation, thereby extending operational longevity and maximizing efficiency.

Project Title: Wind Turbine Predictive Maintenance Using Machine Learning

Description:

This project explores the application of machine learning for predictive maintenance of wind turbines, focusing on the crucial geartrain component. With 76% of wind turbine failures occurring in the gearbox, this study investigates its fault scenarios and proposes a predictive maintenance system.

Key Features:

MATLAB Simulations:

•	Simulates geartrain faults with varying efficiencies (0.05-0.3) and wind speeds (mean 10-20 m/s, std 2.5).
•	Tracks generated power and rotor speed (RPM) for 140 seconds.
•	Generates wave graphs of simulated outputs.
•	Spectrograph Analysis:
•	Converts wave graphs of power and RPM into images using MATLAB spectrogram.
•	CNN-based Classification:
•	Employs Convolutional Neural Networks (CNNs) to classify images for fault severity (mild or highly faulty).
•	Adaptive Maintenance:
•	Recommends gear changes for highly faulty situations to mitigate risks.
•	Prioritizes continued operation for mildly faulty situations to maximize efficiency.
•	Installation:

Software Requirements:

MATLAB
o	Simulink add-ons:
•	Simulink Simscape
•	Simscape Driveline
•	Simscape Electrical
•	Simscape Fluids
•	Simscape Multibody
•	Stateflow


o	MATLAB add-ons:
•	MATLAB Signal Processing Toolbox
•	MATLAB Computer Vision Toolbox
•	MATLAB Deep Learning Toolbox
•	MATLAB Statistics and Machine Learning Toolbox


o	Hardware Requirements:
•	Computer with sufficient processing power for MATLAB simulations 


Steps:

•	Download the project files from the repository.

•	Ensure you have installed the required software and add-ons.

•	Run the MATLAB simulation script with initial conditions (geartrain faults with varying efficiencies (0.05-0.3) and wind speeds (mean 10-20 m/s, std 2.5)).

•	Process the generated data into Excel sheets and save them in the “data_from_simulation” folder.

•	Run the MATLAB script for spectrograph analysis and convert the data into images which is present in the folder “data_from_simulation”.

•	Feed the images into the CNN model for fault classification after saving them in separate folders by class.

•	The model will predict the wind turbine's fault severity (mild or highly faulty).



License:

•	This project is licensed under the MIT License: https://opensource.org/licenses/MIT.

Hyperlinks:

•	Wind Turbine model: https://www.mathworks.com/help/sps/ug/wind-turbine.html
(The mentioned model is modified and uploaded in the folder “simulation”)
youtube video explaining our project: https://youtu.be/thU06Blt-uU
