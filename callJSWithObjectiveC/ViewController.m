//
//  ViewController.m
//  callJSWithObjectiveC
//
//  Created by amol on 05/11/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView loadHTMLString:@"<script src=\"demo.js\"></script>"
                         baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] resourcePath]]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jsWithobjectiveC:(id)sender {
    NSString *str=@"hi JavaScript";
    NSString *function = [[NSString alloc] initWithFormat: @"hello('%@')", str];
    NSString *result = [self.webView stringByEvaluatingJavaScriptFromString:function];
    self.jsString.text=result;
    NSLog(result);
    NSLog(str);
    
}
@end
