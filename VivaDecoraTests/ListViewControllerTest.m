//
//  ListViewControllerTest.m
//  VivaDecora
//
//  Created by Ezequiel on 9/23/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "Specta.h"
#import "Expecta.h"
#import "OCMock.h"
#import "ListViewController.h"

SpecBegin(ListViewControllerSpec)

describe(@"ListViewController", ^{
    __block ListViewController *viewController;
    beforeEach(^{
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UINavigationController *nav = [mainStoryboard instantiateInitialViewController];
        viewController = (ListViewController*)[nav visibleViewController];
        UIView *view = viewController.view;
        expect(view).toNot.beNil();
    });
    
    
    it(@"should be instantiated from the storyboard",^{
        expect(viewController).toNot.beNil();
        expect(viewController).to.beInstanceOf([ListViewController class]);
    });
    
    it(@"should have an outlet for the  collectionView", ^{
        expect(viewController.collectionView).toNot.beNil();
    });
    
    it(@"should have a datasource wired on the  collectionView", ^{
        expect(viewController.collectionView.dataSource).toNot.beNil();
    });
    
    it(@"should have a delegate wired on the  collectionView", ^{
        expect(viewController.collectionView.delegate).toNot.beNil();
    });
    
});

SpecEnd



SpecBegin(ListCellSpec)

describe(@"UICollectionViewCell", ^{
    __block ListCell *cell;
    __block ListViewController *v;
    beforeEach(^{
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UINavigationController *nav = [mainStoryboard instantiateInitialViewController];
        v= (ListViewController*)[nav visibleViewController];
        static NSString *identifier = @"CellListIdentifier";
    
 //       v.collectionView.dataSource =
//        id modelObjectMock = [OCMockObject mockForClass:[SomeModelObjectReference class]];
//        [[[modelObjectMock stub] andReturn:[self buildModelObjectsForTest]] modelObjects];
//        
//        CellContentDataSource *dataSource = [CellContentDataSource new];
//        dataSource.someModelObjectReference = modelObjectMock;
//        v.collectionView.dataSource = dataSource;
        
        // Here we call the data source method directly
        //cell = [[ListCell alloc]init];
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//        cell = (ListCell *)[v.collectionView
//                                   dequeueReusableCellWithReuseIdentifier:@"CellListIdentifier" forIndexPath:indexPath];
//        [cell setup];
//cell.titleLabel.text = @"lalala";
//        
        expect(cell).toNot.beNil();
    });
    
    it(@"should have a prototype cell on the collectionView", ^{
        expect(cell).toNot.beNil();
    });
    
    it(@"should have a imageView in collectionViewCell", ^{
        expect(cell.imageView).toNot.beNil();
    });
});

SpecEnd

