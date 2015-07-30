//
//  ViewController.m
//  4_4_wikipedia_api
//
//  Created by Shinya Hirai on 2015/07/30.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    // APIを叩く準備
//    NSString *urlString = @"http://ja.wikipedia.org/w/api.php?format=json&action=query&prop=info&titles=%E3%82%A8%E3%83%9E%E3%83%BB%E3%83%AF%E3%83%88%E3%82%BD%E3%83%B3";
//    
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    
//    // APIを叩く
//    NSData *json_data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
//    
//    NSError *error = nil;
//    
//    // APIから取得したデータを受け取って辞書データに保持
//    NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:json_data options:NSJSONReadingAllowFragments error:&error];
//    
//    
//    NSLog(@"%@",jsonObject);
//    
//    NSArray *wikipediaList = @[];
//    wikipediaList = jsonObject[@"query"][@"pages"][@"128948"];
//    
//    NSLog(@"==================================");
//    
//    NSLog(@"%@",wikipediaList);
//    
//    NSLog(@"==================================");
//    
//    NSString *title = jsonObject[@"query"][@"pages"][@"128948"][@"title"];
//    
//    NSLog(@"%@",title);
    
    // APIを叩く準備
//    NSString *searchString = _searchBar.text;
//    NSString *urlString = [NSString stringWithFormat:@"http://ja.wikipedia.org/w/api.php?format=json&action=query&prop=revisions&titles=%@&rvprop=content",searchString];
    
    NSString *urlString = @"http://ja.wikipedia.org/w/api.php?format=json&action=query&prop=revisions&titles=%E3%82%A8%E3%83%9E%E3%83%BB%E3%83%AF%E3%83%88%E3%82%BD%E3%83%B3&rvprop=content";
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // APIを叩く
    NSData *json_data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSError *error = nil;
    
    // APIから取得したデータを受け取って辞書データに保持
    NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:json_data options:NSJSONReadingAllowFragments error:&error];
    
    
    // NSLog(@"%@",jsonObject);
    
    NSString *title = jsonObject[@"query"][@"pages"][@"128948"][@"title"];
    NSLog(@"%@",title);
    
    NSString *content = jsonObject[@"query"][@"pages"][@"128948"][@"revisions"][0][@"*"];
    NSLog(@"%@",content);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
