import React, {propTypes} from 'react';
import {
    NativeModules
} from 'react-native';

class Vungle {
    constructor(appID) {
        this.appID = appID;
    };

    play() {
        NativeModules.RNVungle.play(this.appID);
    };
};

export default Vungle;
