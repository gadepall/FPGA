import RPi.GPIO as GPIO
import time
import numpy as np
import matplotlib.pyplot as plt
GPIO.cleanup()


GPIO.setmode(GPIO.BOARD)
GPIO.setup(12,GPIO.OUT)
GPIO.setup(15,GPIO.OUT)
GPIO.setup(16,GPIO.OUT)
GPIO.setup(36,GPIO.OUT)

GPIO.output(12,0)
GPIO.output(15,1)
GPIO.output(16,1)
GPIO.output(36,0)

