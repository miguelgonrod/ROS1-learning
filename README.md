# ROS1-learning

## Table of contents
* [Description](#description)
* [Technologies](#technologies)
* [Setup](#setup)
* [Licence](#licence)

## Description
In this repo I will upload my attempts and codes I make to learn ROS

## Technologies
* ROS: noetic
* Python: 3.8.10
* C++ 11

## Setup
To run my codes You will have to clone this repo
```
$ sudo apt install ros-noetic-desktop-full
$ git clone https://github.com/miguelgonrod/ROS1-learning
$ cd ROS1-learning
$ cp -r * ~/<your workspace>/src/
$ cd ~/<your workspace>
$ catkin build
$ source devel/setup.bash
$ rosrun [package] [node]
```

## Licence
Ros1-learning is available under the BSD-3-Clause license. See the LICENSE file for more details.
