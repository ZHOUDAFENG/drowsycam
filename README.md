# DrowsyCam


DrowsyCam Project
CS5424: Interactive Device Design
Aleo Mok (anm232@cornell.edu), Eric Nguyen (en274@cornell.edu), Samantha Yip (sty5@cornell.edu)

Demo Video: https://youtu.be/HN94TDIt6s4

Introduction

The DrowsyCam product is a system that notifies a vehicle driver when they are falling asleep. Common use cases include long car trips and late-night driving. To implement this notification system, DrowsyCam uses computer vision to detect whether the driver’s eyes are open; if not, a visual and auditory signal (i.e., light and sound) is produced to wake the driver.

Inspiration

We formed a team at Cornell Tech for our final project in our Interactive Device Design class (CS5425), which focuses on creating interactive devices based on Raspberry Pi and Arduino. We were inspired to create this project after seeing luxury car companies offer this feature on their new cars, while average cars lack an affordable and simple aftermarket product. As a result, we wanted to produce a device that 

User Flow

DrowsyCam is designed to execute upon power up (i.e., no command line execution, no laptop necessary). On power up, the LCD screen will display the text “INITIALIZING…” and the red LED will be illuminated. Once the systems has been properly initialized, the text will change to “OKAY” or “OKAY :)” and the green LED will be illuminated instead.

DrowsyCam would first detect faces and focus on the face that is closest to the camera, which, in this case, is a driver. If the driver has his/her face detected by DrowsyCam and eyes opened, DrowsyCam would indicate “OKAY :)” on the LCD screen and have the green LED light on. If the driver’s face is not detected, DrowsyCam would only indicate “OKAY” on the LCD screen without the smiley icon. When DrowsyCam first detects drowsiness, it outputs a warning, which is indicated by “WARNING!!” on the LCD screen, yellow light and low pitch sound. Once the driver opens his/her eyes again, the warning would go off. When DrowsyCam detects drowsiness the second time, it outputs an alert, which is indicated by “ALARM!! WAKE UP!” on the LCD screen, red light and high pitch sound. The driver would have to open his/her eyes and press the button for a few seconds to turn off the alert. DrowsyCam also has an option in the code to enable the use of a car’s on-board diagnostics (OBD). If enabled, warning and alarm states are only considered when the car is moving.

System Architecture

The DrowsyCam system is broken into five (5) parts: Raspberry Pi, Arduino, interaction hardware, camera, and housing (see Figure 1). The Camera feeds a video stream to the Raspberry Pi, which also may take speed readings from the car’s on-board diagnostics (OBD). The Raspberry Pi then determines state (i.e., okay, warning, alarm, or no-face) and communicates the state to the Arduino. The Arduino controls and is receptive to the interaction hardware: an LCD screen, a speaker, 3 LEDs (i.e., red, yellow, and green), and a button. The button state is is communicated back to the Raspberry Pi to dismiss alarms). The Raspberry Pi, Arduino, and interaction hardware are all located in housing. Details on the assembly are provided later in this document. Original setup is shown in Figure 2. To improve our prototype, we put all the hardware and wire in a case. Final setup is indicated below (see Figure 3).

Figure 3: Final setup with camera mounted by the visor and cardboard case on the dash


Eye-Aspect Ratio (EAR)

The crux of the product is its ability to detect whether a driver’s eyes are closed or open. We use the OpenCV computer vision package to detect the driver’s face. The facial landmarks are used to identify the geometry of the driver’s eyes (see Figure 4). Drowsiness state is determined from the average eye-aspect ratio (EAR) between the left and right eyes, which is the ratio of eye pixel height and eye pixel width (see Figure 5). Small EAR values (below 0.2) indicate closed eyes and larger EAR values (above 0.2) indicate open eyes. The EAR threshold varies from one individual to another.

Figure 4: Facial Landmarks                                   Figure 5: Eye Aspect Ratio (EAR)


Resources & Supplies

Raspberry Pi (and associated USB cord / power supply)
Arduino (and associated USB cord)
Interaction Hardware: breadboard, LCD screen, speaker, button, LEDs (red, yellow, green), associated connectors
Auxiliary camera (i.e., connect via USB) (e.g., Logitech C920 Webcam)
Cardboard case, acrylic plastic, magnets
On-Board Diagnostic (OBD) cable, optional

Implementation

Hardware
Housing: we used a brown box (9.5”x5”x2”) provided to us at the beginning of the class as the basis of our case (See Figure 6). We thought it is a nice way to say that we brought what we have learned in class to produce DrowsyCam and to close the loop.

Figure 6: DrowsyCam case made with cardboard and acrylic plastic

We added acrylic plastic to give the DrowsyCam case a modern touch and allow users to see the Raspberry Pi and other hardwares. These were added to the back and top of the product as windows inside the case. These measured 9.5”x2”x1/4” for the back and and 8”x2.5”x1/4” for the top of the case. We cut the plastic by first carving indents with a utility knife and then applying a manual bending force to snap it. We used hot glue to secure it to the cardboard.
Inside the box, we secured the breadboard to the front panel with a cardboard wall, making notches for the wires to connect to the Raspberry Pi (See Figure 7).

Figure 7: Inside the case, with the Raspberry Pi and breadboard

We have magnets installed that allow users to open and close the case easier.
We made cutouts for the display, speaker, LEDs and button by etching and cutting the cardboard with a utility knife.
Configure the Arduino and interaction hardware on the breadboard as follows:

Figure 8: breadboard wiring for the interactive hardware
Note: The following pin connections are hard-coded into the Arduino software.
Component
Pin Number


Component
Pin Number
Button
9


Red LED
A0
Speaker
13


Yellow LED
A2






Green LED
A4
Connect the Arduino to the Raspberry Pi via USB cable
Connect the Camera to the Raspberry Pi via USB cable
Connect the OBD cable to the Raspberry Pi via USB cable (Note: If OBD is used, auxiliary power should be used. Power supply from the car itself will cause the Raspberry Pi to brownout)
Place the assembled hardware inside the housing.
(During execution) Fasten the camera to the visor in the driving seat.
Software Environment
The Raspberry Pi runs on Raspbian firmware.
Make sure the Raspberry Pi runs Python 3.
Install OpenCV. (Flash the SD card with an image provided by the TA’s or follow the link provided in the Acknowledgements section below)
Make sure Python3 and OpenCV are available in a virtual environment (use virtualenv) called ‘cv’ (we will be using the command line ‘workon cv’).
Install the following packages: pySerial, imutils, numpy, dlib, obd.
Software
Load the Arduino with the code provided in Appendix A.
Load the Raspberry Pi with the code provided in Appendix B and label the file face_crop.py.
Load the Raspberry Pi with the haar cascade xml file (https://github.com/opencv/opencv/blob/master/data/haarcascades/haarcascade_frontalface_default.xml) and face landmarks dat file (http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2).
Make the code run automatically on power up.
Load the Raspberry Pi with the code provided in Appendix C and label the file on_reboot.sh.
Run chmod +x on_reboot.sh in the Raspberry Pi terminal to make the file executable.
Run sudo crontab -e in the Raspberry Pi terminal and add the line @reboot /home/pi/on_reboot.sh at the end of the file.
Challenges

Lighting:  Lighting appeared to be one of the biggest challenges.  We focused the camera on the driver’s face, but the background windows were often much brighter, causing the camera to darken the face and make the eyes unrecognizable. We also tried using an IR camera to improve perception in dark settings, but it appeared that eye contour detection suffered as a result.

Multiple Eyes and Eye-like Shapes:  The first version of the Raspberry Pi code originally computed the EAR for multiple faces in a frame. However, based on testing in the car, we noticed that this feature would be problematic if there were a passenger behind the driver. In response, we altered the code to use the largest face and its corresponding eyes. However, we did find some difficulty with eyewear and eye-like shapes. For example, the feature identification step would occasionally identify a user’s glasses or eyebrows as eyelid contours. We also noticed that certain clothing could resemble large eyes as well (e.g., a shirt with large spots).

Orientation:  Face orientation had to be fairly forward facing and level as well.  If the driver nodded off to the side or put their head down, the eyes would either be out of view, or at an angle that resembled closed eyes when they were actually open.

Calibration: There are many parameters that are hardcoded into the Raspberry Pi software. While we tweaked some of the parameters related to timing (e.g., warning/alarm activation threshold, warning dismissal threshold, button press duration), the key parameter was the eye-aspect ratio (EAR) threshold. Increasing the threshold would make the program more sensitive to eye closing, but would also result frequent false positives (i.e., the program thinks the driver’s eyes are closed when the eyes are really open). Decreasing the threshold would make the program less sensitive to eye closing, but would result in frequent false negatives (i.e., the program thinks the driver’s eyes are open when the eyes are really closed). 

Conclusion

Through this project, we learned mainly about connecting the Raspberry Pi and Arduino and installing OpenCV onto our Raspberry Pi. During user testing, we generally got positive feedback. However, some of the feedback gathered from user testing and device validation helped uncover problems that were previously unknown. We now know not to underestimate the value of getting a base functional prototype to begin validation as soon as possible.
