//
//  ViewController.m
//  NSUserDefaults
//
//  Created by YUKIKO HARADA on 2015/03/20.
//  Copyright (c) 2015年 yuki66. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        if(mutableArray == nil){
        mutableArray = [[NSMutableArray alloc]init];
    }
    [mutableArray addObject:@"a"];
    [mutableArray addObject:@"b"];
    [mutableArray addObject:@"c"];
    
    NSUserDefaults *ud =[NSUserDefaults standardUserDefaults];
    [ud setObject:mutableArray forKey:@"mutable"];
    [ud synchronize]; //即時保存
    
    //取り出し
    mutableArray = [[ud objectForKey:@"mutable"] mutableCopy];
    
    NSLog(@"mutablearray == %@", mutableArray);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)addObject{
    [mutableArray addObject:@"d"];
    [mutableArray addObject:@"f"];
    NSLog(@"mutableArray == %@",mutableArray);
    
}

-(IBAction)removeObject{
    [mutableArray removeAllObjects];
}


@end