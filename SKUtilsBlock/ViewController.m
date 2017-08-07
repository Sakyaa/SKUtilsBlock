//
//  ViewController.m
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/5.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "ViewController.h"
#import "SKStringUtilities.h"

#import "String+SKAdditions.h"
#import "SKStringAttributeMaker.h"
#import "SKStringAttribute.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *string = @"asdhasdasdsfadnasidnasidniasndiasndinaidniasndiasndiandiandiniahdiad";
    NSMutableAttributedString *mstring = [[NSMutableAttributedString alloc]initWithString:string];
    [mstring sky_makeConstraints:^(SKStringAttributeMaker *make) {
        make.attribute.textFont([UIFont systemFontOfSize:30]).foregroundColor([UIColor redColor]).textRange(NSMakeRange(0, 3));
        make.attribute.textFont([UIFont systemFontOfSize:50]).foregroundColor([UIColor orangeColor]).textRange(NSMakeRange(4, 2));
        make.style.textlineSpacing(10).textAlignment(NSTextAlignmentRight).textFirstLineHeadIndent(20);
    }];
    
    
    
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 200, 400)];
    textLabel.numberOfLines = 0;
    [self.view addSubview:textLabel];
    textLabel.attributedText = mstring;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
