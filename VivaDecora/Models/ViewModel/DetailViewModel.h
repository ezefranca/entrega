//
//  DetailViewModel.h
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailsAvfm.h"

@interface DetailViewModel : NSObject

@property (strong, nonatomic) DetailsAvfm *model;
-(instancetype)initWithModel:(DetailsAvfm*)model;

@property (nonatomic, strong) NSString * address;
@property (nonatomic, strong) NSString * averageRating;
@property (nonatomic, strong) NSString * background;
@property (nonatomic, strong) NSString * city;
@property (nonatomic, strong) NSString * cityId;
@property (nonatomic, strong) NSString * country;
@property (nonatomic, strong) NSString * defunct;
@property (nonatomic, strong) NSString * favoriteCount;
@property (nonatomic, strong) NSString * gps;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * lat;
@property (nonatomic, strong) NSString * longField;
@property (nonatomic, strong) NSString * metro;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * newestImage;
@property (nonatomic, strong) NSString * phone;
@property (nonatomic, strong) NSString * plCity;
@property (nonatomic, strong) NSString * plState;
@property (nonatomic, strong) NSString * primaryTickets;
@property (nonatomic, strong) NSString * ratingCount;
@property (nonatomic, strong) NSString * sameas;
@property (nonatomic, strong) NSString * seatsmartId;
@property (nonatomic, strong) NSString * size;
@property (nonatomic, strong) NSString * state;
@property (nonatomic, strong) NSString * stats;
@property (nonatomic, strong) NSString * stubhubId;
@property (nonatomic, strong) NSString * team;
@property (nonatomic, strong) NSString * tiqiqId;
@property (nonatomic, strong) NSString * type;
@property (nonatomic, strong) NSString * venueId;
@property (nonatomic, strong) NSString * venueImages;
@property (nonatomic, strong) NSString * zip;


@end
