Carb Candy
======
![App Icon](carbCandy/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x-1.png?raw=true)<br>
**Carb Candy** is an app based on [Chris Hannemann's](https://github.com/channemann/push-button-get-candy) push-button-get-candy project. Carb Candy calculates how much candy (skittles) you need to eat based on your current blood sugar level to your intended target level.

#### Screenshot

<a href="/images/home.png"><img src="/images/home.png?raw=true" alt="home" width="170"></a>
<a href="/images/errormsg.png"><img src="/images/errormsg.png?raw=true" alt="error" width="170"></a>
<a href="/images/calculationex.png"><img src="/images/calculationex.png?raw=true" alt="calulated" width="170"></a>

### Candy Calculation
All calculation formulas are based on how-much-candy for more detailed documentation [click-here](https://github.com/channemann/push-button-get-candy/wiki/2.-How-Much-Candy%3F) <br>

The basic formula for determining the total amount of candy:

`totalSkittles = (targetGlucose - currentGlucose) / ((insulinSensitivity/carbRatio) x carbsPerSkittle)`

All calculation are using *units: mg/dL*
