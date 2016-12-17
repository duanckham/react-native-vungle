# react-native-vungle

Installation
---

(a) Add the Vungle framework to your Xcode(your react-native main) project.

[Vungle SDK document](https://support.vungle.com/hc/en-us/articles/204430550-Get-Started-with-Vungle-iOS-SDK)

(b) In XCode, in the project navigator:

- Right click Libraries.
- Add Files to [your project's name].

Usage
---

```
import Vungle from 'react-native-vungle';

...

let vungle = new Vungle(YOUR_VUNGLE_APPID);

// Play AD
vungle.play();
```
