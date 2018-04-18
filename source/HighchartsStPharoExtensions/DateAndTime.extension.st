Extension { #name : #DateAndTime }

{ #category : #'*HighchartsStPharoExtensions' }
DateAndTime >> asMillisecondsSince1970 [
  "Answers milliseconds since midnight Jan 1, 1970. This is useful as it is  specified by the JavaScript Date object too."

  ^ self asUnixTime * 1000
]