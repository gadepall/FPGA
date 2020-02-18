import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BOARD)

GPIO.setup(12,GPIO.IN)
GPIO.setup(15,GPIO.IN)
GPIO.setup(16,GPIO.IN)
GPIO.setup(35,GPIO.IN)



decimal = (GPIO.input(12)<<3)+(GPIO.input(15)<<2)+(GPIO.input(16)<<1)+(GPIO.input(35))

print('decimal value is' , decimal)
