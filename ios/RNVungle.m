#import <MapKit/MapKit.h>
#import "RNVungle.h"

@implementation RNVungle

RCT_EXPORT_MODULE()
RCT_EXPORT_METHOD(play:(NSString *)appID)
{
    UIViewController *viewController = [UIApplication sharedApplication].keyWindow.rootViewController;

    dispatch_async(dispatch_get_main_queue(), ^{
        NSError *error;
        VungleSDK *sdk = [VungleSDK sharedSDK];
        
        [sdk startWithAppId:appID];
        [sdk playAd:viewController error:&error];
        
        if(error != nil)
        {
            NSLog(@"* Vungle error: %@", error);
        }
    });
}

@end
