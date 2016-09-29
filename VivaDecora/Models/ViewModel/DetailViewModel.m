//
//  DetailViewModel.m
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailViewModel.h"
#import <UIKit/UIKit.h>

@implementation DetailViewModel

-(instancetype)initWithModel:(DetailsAvfm *)model {
    self = [super init];
    self.model = model;
    if (self) {
        [self setValues];
    }
    return self;
}

-(void)setValues{
    
    self.address = _model.address;
    self.average_rating = _model.average_rating;
    self.background = _model.background.stringValue;
    self.city = _model.city;
    self.city_id = _model.city_id.stringValue;
    self.country = _model.country;
    self.defunct = _model.defunct.stringValue;
    self.favorite_count = _model.favorite_count;
    self.gps = _model.gps;
    self.lat = _model.lat;
    self.metro = _model.metro;
    self.name = _model.name;
    self.newest_image = [NSString stringWithFormat:@"http://aviewfrommyseat.com/photos/%@", _model.newest_image];
    self.phone = _model.phone;
    self.pl_city = _model.pl_city;
    self.pl_state = _model.pl_state;
    self.primary_tickets = _model.primary_tickets;
    self.rating_count = _model.rating_count;
    self.sameas = _model.sameas;
    self.seatsmart_id = _model.seatsmart_id;
    self.size = _model.size;
    self.state = _model.state;
    self.stats = [[NSMutableAttributedString alloc] initWithData:[_model.stats dataUsingEncoding:NSUTF8StringEncoding]
                                                                             options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                                                                                       NSCharacterEncodingDocumentAttribute: [NSNumber numberWithInt:NSUTF8StringEncoding]}
                                                                  documentAttributes:nil error:nil];
    self.stubhub_id = _model.stubhub_id;
    self.team = _model.team;
    self.tiqiq_id = _model.tiqiq_id;
    self.type = _model.type;
    self.venue_id = _model.venue_id;
    self.venue_images = _model.venue_images;
    self.zip = _model.zip;
    self.link = _model.link;
}

@end
