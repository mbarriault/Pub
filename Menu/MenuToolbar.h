//
//  MenuToolbar.h
//  Pub
//
//  Created by Michael Barriault on 2012-08-19.
//  Copyright (c) 2012 Elemist.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MenuViewController.h"

@interface MenuToolbar : NSToolbar
@property (strong) NSSearchField* searchBar;
@property (weak) MenuViewController* parentMenu;
-(IBAction)passto:(id)sender;
@end
