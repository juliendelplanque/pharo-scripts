initialization
initializePotentialIcebergRepos
	<script>
	| location projects |
	location := self sharedRepositoryLocation.
	projects := OrderedCollection new.
	self
		collectAllSubprojectsFrom: location
		into: projects.
	IceRepository registry
		do: [ :repo | 
			projects
				detect: [ :e | 
					e basename = repo name
						and: [ repo location isNil or: [ repo location exists not ] ] ]
				ifFound: [ :dir | repo location: dir ] ]