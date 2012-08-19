//
//  BartenderTests.m
//  BartenderTests
//
//  Created by Mike Barriault on 2012-08-13.
//
//

#import "BartenderTests.h"
#import "Brew.h"

@implementation BartenderTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testList
{
    NSArray* list = Brew.list;
    NSLog(@"%@", list);
//    STFail(@"Unit tests are not implemented yet in BartenderTests");
}

-(void) testUpdate {
    [Brew update];
}

@end
