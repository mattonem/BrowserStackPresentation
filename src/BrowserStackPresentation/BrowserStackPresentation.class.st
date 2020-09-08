Class {
	#name : #BrowserStackPresentation,
	#superclass : #GtSlideShowStencil,
	#category : #BrowserStackPresentation
}

{ #category : #examples }
BrowserStackPresentation class >> start [ 
	<example>
 	self new openInSpace
]

{ #category : #'api - instantiation' }
BrowserStackPresentation >> create [
	| show |
	show := GtSlideShow new.
	show
		addSlide:
			(GtFilePictureSlide new
				fileReference:
					(GtResourceReference
						path: Path * 'BrowserStackPresentation' / 'ressources' / 'pharo.png'));
		addSlide:
			(GtTextSlide new
				newTextWithFormat: (self heading: 'Presentation of the Pharo');
				newTextWithFormat: (self heading: 'No "Ifs" required');
				newTextWithFormat: (self heading: 'D&D Demo'));
		addSlide:
			(GtTextSlide new
				newTextWithFormat: (self heading: 'What is Pharo ?');
				newTextWithFormat: (self subtitle: 'Pure and elegant Object Oriented Language');
				newTextWithFormat: (self subtitle: 'Fully written in itself');
				newTextWithFormat: (self subtitle: 'Empowering'));
		addSlide:
			(GtTextAndElementSlide new
				newTextWithFormat: (self heading: 'The full syntax on a postcard');
				element: [ self
						methodCoderForMethods: {(GtPharoMethodExample >> #exampleWithNumber:)} ]);
		addSlide:
			(GtTextAndElementSlide new
				newTextWithFormat: (self heading: 'The full syntax on a postcard');
				newTextWithFormat: (self subtitle: 'Objects');
				newTextWithFormat: (self subtitle: 'Messages');
				newTextWithFormat: (self subtitle: 'Closures (Blocks)');
				element: [ self
						methodCoderForMethods: {(GtPharoMethodExample >> #exampleWithNumber:)} ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'It all starts with an Object');
				element: [ GtPlaygroundSlide new
						snippets: {'true' . '21' . 'Mike'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'We send it messages');
				element: [ GtPlaygroundSlide new
						snippets: {'true not' . '21 * 2 ' . 'Mike playsDnDWith: Will and: Lucas'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Closures (Blocks)');
				element: [ GtPlaygroundSlide new
						snippets: {'(1 to: 5) collect: [:i | i factorial ]'};
						asElement ]);
		addSlide: self youGotItSlide;
		addSlide:
			(GtTextSlide new
				newTextWithFormat: (self heading: 'What about...');
				newTextWithFormat: (self subtitle: 'if () then {}');
				newTextWithFormat: (self subtitle: 'class definitions');
				newTextWithFormat: (self subtitle: 'iterators'));
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'We don''t need "Ifs" ');
				element: [ GtPlaygroundSlide new
						snippets:
							{'(Float pi > 3) ifTrue: [''That was expected''] ifFalse: [''Maths are broken'']'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'We don''t need "Ifs"');
				newTextWithFormat: (self subtitle: 'Let''s look at Booleans');
				element: [ (GtPager
						createWrappedOn:
							(GtInspectorTool
								forObject:
									(GtMondrianDomainExamples new
										classHierarchyFor: Boolean withAllSubclasses)
								viewSelector: #gtLiveFor:)) maximized ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Demo time!');
				newTextWithFormat: (self subtitle: 'Let''s play D&D');
				element: [ GtPlaygroundSlide new
						snippets: {'(2 D4 + 1 D20) roll'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Thank you !');
				element: [ self
						methodCoderForMethods: {(GtPharoMethodExample >> #exampleWithNumber:)} ]);
		makeArrowsVisible.
	^ show
]

{ #category : #examples }
BrowserStackPresentation >> exampleSlideShow [
	"Or better: self new openInSpace"

	<gtExample>
	^ self  
]

{ #category : #'api - instantiation' }
BrowserStackPresentation >> youGotItSlide [
	^ GtLabelAndElementSlide new
		newTextWithFormat: (self heading: 'You got it!');
		element: [ self methodCoderForMethods: {(self class >> #youGotItSlide)} ]
]
