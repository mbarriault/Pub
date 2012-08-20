//
//  MenuViewController.h
//  Pub
//
//  Created by Michael Barriault on 2012-08-19.
//  Copyright (c) 2012 Elemist.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MenuToolbar.h"

@interface MenuViewController : NSViewController
@property (strong) NSSearchField* searchBar;
@property (strong) IBOutlet NSProgressIndicator* progressSpinner;
@property (strong) IBOutlet NSTextField* updatingLabel;
@property (strong) IBOutlet MenuToolbar* toolbar;
@end
