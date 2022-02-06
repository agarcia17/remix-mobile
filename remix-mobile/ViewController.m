//
//  ViewController.m
//  remix-mobile
//
//  Created by Armando Garcia on 2/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // give node.js some time to boot up
    // TODO: change to something better
    sleep(5);
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1:3000"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    _webView = [[WKWebView alloc] initWithFrame:self.view.frame];
    [_webView loadRequest:request];
    _webView.frame = CGRectMake(
                                self.view.frame.origin.x,
                                self.view.frame.origin.y,
                                self.view.frame.size.width,
                                self.view.frame.size.height);
    
    
    [self.view addSubview:_webView];
}

@end
