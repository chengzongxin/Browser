//
//  ViewController.m
//  Browser
//
//  Created by SZFT1 on 16/4/12.
//  Copyright © 2016年 cheng.zongxin. All rights reserved.
//

#import "ViewController.h"
#define URLSTRING @"http://m.zhangzhang8.com/web/finance.html"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addWebView];
}

- (void)addWebView
{
    //1、创建UIWebView：
    
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    UIWebView* webView = [[UIWebView alloc]initWithFrame:frame];
    
    //2、设置属性：
    
    webView.scalesPageToFit = YES;//自动对页面进行缩放以适应屏幕
    webView.detectsPhoneNumbers = YES;//自动检测网页上的电话号码，单击可以拨打
    webView.scrollView.bounces = NO;
    //3、显示网页视图UIWebView：
    
    [self.view addSubview:webView];
    
    //4、加载内容
    
    NSURL* url = [NSURL URLWithString:URLSTRING];//创建URL
    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
    [webView loadRequest:request];//加载
    
    /*
    //也可以加载一个本地资源:
    
    NSURL* url = [NSURL fileURLWithPath:filePath];//创建URL
    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
    [webView loadRequest:request];//加载
    
    UIWebView 还支持将一个NSString对象作为源来加载。你可以为其提供一个基础URL，来指导UIWebView对象如何跟随链接和加载远程资源：
    
    [webView loadHTMLString:myHTML baseURL:[NSURL URLWithString:@"http://baidu.com"]];
    
    //5、导航
    
    UIWebView类内部会管理浏览器的导航动作，通过goForward和goBack方法你可以控制前进与后退动作：
    
    [webView goBack];
    [webView goForward];
    [webView reload];//重载
    [webView stopLoading];//取消载入内容
     */
}
@end
