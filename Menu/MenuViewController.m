//
//  MenuViewController.m
//  Pub
//
//  Created by Michael Barriault on 2012-08-19.
//  Copyright (c) 2012 Elemist.net. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
        self.searchBar = self.toolbar.searchBar;
    }
    
    return self;
}

@end
