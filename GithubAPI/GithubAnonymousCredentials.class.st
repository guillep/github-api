Class {
	#name : #GithubAnonymousCredentials,
	#superclass : #Object,
	#category : 'GithubAPI-Core'
}

{ #category : #configuring }
GithubAnonymousCredentials >> configureHttpClient: anHttpClient [

	"Nothing. Github Anonymous access is done when no credentials are provided in the http request"
]
