//
//  EmojiViewController.m
//  EmojiDemo
//
//  Created by howiezhang on 14-3-29.
//  Copyright (c) 2014年 Geek-Zoo. All rights reserved.
//

#import "EmojiViewController.h"
#import <UIKit/UIKit.h>
#import "NSString+Emoji.h"

@implementation EmojiViewController 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
	{

    }
    return self;
}

- (void)loadView
{
	[super loadView];
}

- (void)viewDidLoad
{
	[super viewDidLoad];

	CGRect labelFrame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/3);
	self.label		= [[UILabel alloc]initWithFrame: labelFrame ];
	self.label.numberOfLines = 0;
	[self.view addSubview:self.label];
	
	labelFrame = CGRectMake(0, self.view.bounds.size.height/3, self.view.bounds.size.width, self.view.bounds.size.height/3);
	self.emojiLabel = [[UILabel alloc]initWithFrame: labelFrame ];
	self.emojiLabel.numberOfLines = 0;
	[self.view addSubview:self.emojiLabel];
	
	CGRect textFrame = CGRectMake(0, self.view.bounds.size.height*2/3, self.view.bounds.size.width, self.view.bounds.size.height/3);
	self.textView = [[UITextView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
	self.textView.frame = textFrame;
	self.textView.text = @"hello world";
	self.label.text = @"hello world";

	self.textView.textColor = [UIColor blackColor];
	self.textView.backgroundColor = [UIColor grayColor];
	[self.textView setDelegate:self];
	[self.view addSubview: self.textView];


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textViewDidChange:(UITextView *)textView
{
	NSString * textStr = textView.text;
	NSString * emojiStr = [textStr encodeEmoji];
	self.label.text = emojiStr;
	self.emojiLabel.text = [emojiStr decodeEmoji];
}

@end
