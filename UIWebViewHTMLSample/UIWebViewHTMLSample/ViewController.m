//
//  ViewController.m
//  UIWebViewHTMLSample
//
//  Created by Dolice on 2013/06/13.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIWebView初期化
    _webView = [[UIWebView alloc] init];
    
    //UIWebViewの設定
    _webView.frame = self.view.bounds;
    _webView.autoresizingMask =
        UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _webView.dataDetectorTypes = UIDataDetectorTypeAll;
    
    //UIWebViewを画面に追加
    [self.view addSubview:_webView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //HTMLタグの指定
    NSString *html = @"<p><b>電話番号</b> 090-1111-1111</p><p><b>ホームページ</b> http://exsample.com/</p>";
    
    //UIWebViewに HTML追加
    [_webView loadHTMLString:html baseURL:nil];
}

@end
