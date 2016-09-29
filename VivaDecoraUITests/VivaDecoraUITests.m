//
//  VivaDecoraUITests.m
//  VivaDecoraUITests
//
//  Created by Ezequiel on 9/22/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface VivaDecoraUITests : XCTestCase

@end

@implementation VivaDecoraUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTouchCell {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [[app.collectionViews.cells.otherElements containingType:XCUIElementTypeStaticText identifier:@"Turner Field"].element tap];
    [app.navigationBars[@"DetailsView"].buttons[@"Viva Decora"] tap];
    
}

-(void)testScroll {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *collectionView = [[[[[app.otherElements containingType:XCUIElementTypeNavigationBar identifier:@"Viva Decora"] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeCollectionView].element;
    [collectionView tap];
    [collectionView swipeUp];
    [collectionView swipeUp];
    [collectionView swipeUp];
    [collectionView swipeUp];
    [collectionView swipeUp];
    [collectionView swipeUp];
    [collectionView swipeUp];
    [collectionView tap];
}

@end
