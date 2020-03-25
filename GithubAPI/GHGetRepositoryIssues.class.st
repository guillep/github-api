Class {
	#name : #GHGetRepositoryIssues,
	#superclass : #GHGetRequest,
	#instVars : [
		'repositoryName',
		'ownerName',
		'state'
	],
	#category : #'GithubAPI-Requests'
}

{ #category : #request }
GHGetRepositoryIssues >> initialize [

	super initialize.
	state := 'all'
]

{ #category : #accessing }
GHGetRepositoryIssues >> ownerName: aString [ 
	ownerName := aString
]

{ #category : #request }
GHGetRepositoryIssues >> queryArguments [
	
	^ { 'state' -> state } asDictionary
]

{ #category : #accessing }
GHGetRepositoryIssues >> repositoryName: aString [ 
	repositoryName := aString
]

{ #category : #requests }
GHGetRepositoryIssues >> url [
	
	^ self baseUrl / ('/repos/{owner}/{repo}/issues' format: { 
		'owner' -> ownerName.
		'repo'  -> repositoryName } asDictionary)
]
