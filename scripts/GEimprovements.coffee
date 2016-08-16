
###
#
# Generate GE-themed business-minded sentiments when a user asks 'how can i improve GE?'
# 
# Kate Wasynczuk
# August, 2016
#
###

ge_verb_list = [
	'leverage',
	'accelerate',
	'network',
	'identify',
	'impact',
	'inspire',
	'invest'
]

ge_noun_list = [
	'outcomes',
	'round-tables',
	'dumb assets',
	'value streams',
	'IoT',
	'Industrial Internet',
	'networks',
	'Digital Threads',
	'Digital Twins',
	'Jeff Serpas',
	'design thinking',
	'hint waters',
	'DTLPs'
]
# <adj>-methodology

ge_adj_list = [
	'all-hands',
	'digital',
	'agile',
	'industrial',
	'transparent',
	'immersive',
	'executive',
	'APM',
	'Predix',
	'marketplace',
	'human-centered'
]
# <noun>-centered

module.exports = (robot) ->
	robot.hear /(how can i improve ge?)/i, (res) ->

        adj = res.random ge_adj_list
        noun = res.random ge_noun_list
        verb = res.random ge_verb_list

        res.send "#{verb} #{adj} #{noun}"
