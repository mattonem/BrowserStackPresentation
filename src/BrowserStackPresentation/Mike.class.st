Class {
	#name : #Mike,
	#superclass : #Object,
	#category : #BrowserStackPresentation
}

{ #category : #accessing }
Mike class >> playsDnDWith: anObject and: anObject1 [
	^ (GtResourceReference
		path: Path * 'mattonem' / 'BrowserStackPresentation' / 'ressources' / 'demo.jpg') fileReference
]
