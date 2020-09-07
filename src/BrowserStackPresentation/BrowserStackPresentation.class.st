Class {
	#name : #BrowserStackPresentation,
	#superclass : #GtSlideShowStencil,
	#category : #BrowserStackPresentation
}

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
				newTextWithFormat: (self heading: 'Pure and elegant Object Oriented Language');
				newTextWithFormat: (self heading: 'Fully written in itself');
				newTextWithFormat: (self heading: 'Empowering'));
		addSlide:
			(GtTextAndElementSlide new
				newTextWithFormat: (self heading: 'Everything is an Object');
				element: [ GtPlaygroundSlide new
						snippets:
							{'3 + 4' . '''Hello world''' . 'true not' . 'Date today' . '(ZnEasy getPng: ''https://pbs.twimg.com/profile_images/451968255846928384/0pyDMTyp_400x400.png'') asMorph'};
						asElement ]);
		addSlide:
			(GtTextAndElementSlide new
				newTextWithFormat: (self heading: 'The full syntax on a postcard');
				element: [ self methodCoderForMethods: {(Object >> #exampleWihtNumber:)} ]);
		addSlide:
			(GtTextSlide new
				newTextWithFormat: (self heading: 'Objects');
				newTextWithFormat: (self heading: 'Messages');
				newTextWithFormat: (self heading: 'Closures (Blocs)'));
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Objects');
				element: [ GtPlaygroundSlide new
						snippets: {'1' . 'false' . 'Date' . 'Float'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Messages');
				newTextWithFormat: (self subtitle: 'Unary message');
				element: [ GtPlaygroundSlide new
						snippets: {'1 class' . 'false not' . 'Date today' . 'Float pi'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Messages');
				newTextWithFormat: (self subtitle: 'Binary message');
				element: [ GtPlaygroundSlide new
						snippets: {'1 + 2' . '3 @ 4'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Messages');
				newTextWithFormat: (self subtitle: 'Keyword message');
				element: [ GtPlaygroundSlide new
						snippets: {'2 between: 10 and: 20'};
						asElement ]);
		addSlide:
			(GtLabelAndElementSlide new
				newTextWithFormat: (self heading: 'Closures (Blocs)');
				element: [ GtPlaygroundSlide new
						snippets: {'(1 to: 5) collect: [:i | i factorial ]'};
						asElement ]);
		addSlide: self youGotItSlide;
		addSlide: (GtTextSlide new newTextWithFormat: (self heading: 'Wait but...'));
		addSlide:
			(GtTextSlide new
				newTextWithFormat: (self heading: 'Wait but...');
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
						snippets:
							{'(1 D4 + 3 D20) roll'};
						asElement ]);
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
