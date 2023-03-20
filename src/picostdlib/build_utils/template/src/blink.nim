import picostdlib/[hardware/gpio, pico/time]

gpioInit(PicoDefaultLedPin)
gpioSetDir(PicoDefaultLedPin, Out)

while true:
  gpioPut(PicoDefaultLedPin, High)
  sleepMs(250)
  gpioPut(PicoDefaultLedPin, Low)
  sleepMs(250)
