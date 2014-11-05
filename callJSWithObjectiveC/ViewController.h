//
//  ViewController.h
//  callJSWithObjectiveC
//
//  Created by amol on 05/11/14.
//
//
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *jsString;
- (IBAction)jsWithobjectiveC:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
