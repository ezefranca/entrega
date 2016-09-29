//
//  DetailsViewManager.h
//  VivaDecora
//
//  Created by Ezequiel on 29/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailViewModel.h"

@interface DetailsViewManager : NSObject
@property (strong, nonatomic) NSMutableArray<DetailViewModel*> *models;
-(instancetype)initWithViewModels:(NSMutableArray<DetailViewModel*>*)models;
@end
