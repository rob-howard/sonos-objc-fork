//
//  NSString+XML.m
//  
//
//  Created by Rob Howard on 12/12/15.
//
//

#import "NSString+XML.h"

@implementation NSString (XMLSonos)

-(NSString *)xmlEscaped{
    
    NSMutableString * temp = [[NSMutableString alloc] initWithString:self];
    
    [temp replaceOccurrencesOfString:@"&"  withString:@"&amp;"  options:NSLiteralSearch range:NSMakeRange(0, [temp length])];
    [temp replaceOccurrencesOfString:@"\"" withString:@"&quot;" options:NSLiteralSearch range:NSMakeRange(0, [temp length])];
    [temp replaceOccurrencesOfString:@"'"  withString:@"&#x27;" options:NSLiteralSearch range:NSMakeRange(0, [temp length])];
    [temp replaceOccurrencesOfString:@">"  withString:@"&gt;"   options:NSLiteralSearch range:NSMakeRange(0, [temp length])];
    [temp replaceOccurrencesOfString:@"<"  withString:@"&lt;"   options:NSLiteralSearch range:NSMakeRange(0, [temp length])];
    
    return temp;
}

@end
