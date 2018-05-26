CREATE TABLE `user_record` (
  `email` varchar(30) PRIMARY KEY,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `full_name` varchar(70) NOT NULL,
  `phone_no` int(12) NOT NULL,
  `interests` varchar(1000) NOT NULL
);

CREATE TABLE `news` (
  `news_id` varchar(10) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `author` varchar(30) NOT NULL,
  `source1` varchar(70),
  `link1` varchar(70),
  `source2` varchar(70),
  `link2` varchar(70),
  `source3` varchar(70),
  `link3` varchar(70),
  `tags` varchar(1000) NOT NULL,
  `newspara1` varchar(2000) NOT NULL,
  `newspara2` varchar(2000) NOT NULL,
  `newspara3` varchar(2000) NOT NULL
);

# database name 'river_db'

INSERT INTO `user_record` VALUES 
('jeetnirnejak@gmail.com', 'jitu1234', 'visitor', 'Jitendra Nirnejak', 9340069644, 'Apple, Microsoft, Google, Android, Python, Windows, Artificial Intelligence, Machine Learning, Web'),
('nishunish@outlook.com', 'nishu1234', 'visitor', 'Nishant Sahu', 9407940408, 'Apple, Microsoft, Google, Android, Python, Windows, Artificial Intelligence, Machine Learning, Web');

INSERT INTO `news` VALUES
('1','Razer Phone Announced','20171103','Jitendra Nirnejak','The Verge','
  https://www.theverge.com/2017/11/1/16519692/razer-phone-android-gaming-specs-release-date-price-photos','','','','','Smartphone, Android, Razer, Flagship, Gaming','This week Razer enteres the already flooded Smartphone Market with their ''Razer Phone''. After their Aquivisition of NextBit Last year it was a very obvious move by them. This phone has 5.7 inch screen with 1440p resolution with variable refresh rate. With 8 GB RAM and Snapdragon 835 Processor this phone is no joke. It has 64GB of internal storage. The Battery is 4000mAh. It houses two 12 megapixel camera on the back. One camera has an  f/1.8 lens for wideangle photography and the other one is f/2.6 shooter which is telephoto lens.','Like the other Flagship phones released in 2017 Razer Phone does not have a headphone jack. If you look at the Razer Phone the first thing you''ll notice is giant bazels which is not 2017. It has huge bazels on top and the bottom which also houses It''s front firing speakers. The Razer Phone has a boxed shape. For the Display technology it uses IGZO Panel which has refresh rate of 120Hz.','It comes with Android Nougat 7.1.1 with Premium Nova Launcher. Unfortunately it does not come with Android 8. The Razer Phone costs $700 and will start shipping from 17th November in US and some Countries. Not India. :( '),
('2','Windows 10 Fall Creators Update Issues','20171103','Jitendra Nirnejak','Windows Central','
  https://www.windowscentral.com/windows-10-fall-creators-update-user-problems-and-complaints','','','','','Windows, Microsoft, Windows 10, Fall Creators, Operating System','This month Microsoft Released the latest Version of it''s most popular Operating System Windows 10. It''s called Windows 10 Fall Creators Update. But users have reported some problems and complaints. From installation to driver issue and Even some weird Expreience Problems.','Upgrading to Fall Creatos Update was not so smooth process for all the users. Some, people have issues with updating to the new version of windows. Some users reported at 22% installation just stopped. While others reported error saying ''Here error 0x80070490 - 0x20003 using Media Creation Tool'' and then windows restored to previous version.','Other group of Users reported Issues with Edge browser like continuously asking for Webpage Recovery. Other Users faced some Driver Issues. In the new Update of Windows 10 one of the biggest complaints reported was the problem with missing apps after installing the update. We hope that Microsoft will release some updates to fix these bugs.');
('3','HTC U11 Plus announced with Android Oreo','20171103','Jitendra Nirnejak','The Verge','
  https://www.theverge.com/2017/11/2/16589218/htc-u11-plus-announced-specs-release-date-price-android-oreo','','','','','Smartphone, Android, HTC, Flagship, Android Oreo','Yesterday HTC announced an upgrade to their current flagship U11. The new HTC U11 Plus has some features that weren''t on the U11. Like, it has the new bezel less 6 inch Display.It has resolution of 2880 x 1440 that means aspect ratio of 18:9. U11 Plus has 6GB of RAM and 128GB of storage. U11 Plus houses a bigger thann U11 Battery 3,930mAh','HTC U11 ships with Android 8 Oreo out of the box. It also supports Amazon Alexa as well as Google Assistant. A new feature HTC has added is a new radial menu that can be triggered with a squeeze.','The subtle improvements made to the U11 has made U11 Plus a Great Choice for Andoid Lovers. Overall HTC U11 seems to be really great Android Smartphone made in 2017.');