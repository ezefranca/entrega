//
//  ListViewManager.h
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListViewModel.h"


@interface ListViewManager : NSObject
@property (strong, nonatomic) NSMutableArray<ListViewModel*> *models;
-(instancetype)initWithViewModels:(NSMutableArray<ListViewModel*>*)models;
@end
