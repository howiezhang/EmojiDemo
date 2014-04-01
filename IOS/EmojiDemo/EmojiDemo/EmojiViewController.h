//
//  EmojiViewController.h
//  EmojiDemo
//
//  Created by howiezhang on 14-3-29.
//  Copyright (c) 2014年 Geek-Zoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmojiViewController : UIViewController<UITextViewDelegate>

@property (nonatomic, retain) UITextView * textView;
@property (nonatomic, retain) UILabel	 * label;
@property (nonatomic, retain) UILabel	 * emojiLabel;
@end
