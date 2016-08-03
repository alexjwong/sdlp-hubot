###
#
# Celebrate the great and wonderful Chris Egeberg with some of his most notable words of wisdom
# 
# Kate
# August, 2016
#
###

chrisEgebergReplies = ['Chris Egeberg (praise be unto him)',
                'You miss 100% of the shots you don’t take. -- Chris Egeberg',
                'Don\'t cry because it\'s over, smile because it happened. -- Chris Egeberg',
                'I\'m selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best. -- Chris Egeberg'
                'Be yourself; everyone else is already taken. -- Chris Egeberg',
                'You\'ve gotta dance like there\'s nobody watching, Love like you\'ll never be hurt, Sing like there\'s nobody listening, And live like it\'s heaven on earth. -- Chris Egeberg',
                'Be the change that you wish to see in the world. -- Chris Egeberg',
                'If you want to know what a man\'s like, take a good look at how he treats his inferiors, not his equals. -- Chris Egeberg',
                'No one can make you feel inferior without your consent. -- Chris Egeberg',
                'Insanity is doing the same thing, over and over again, but expecting different results. -- Chris Egeberg',
                'They may take our lives, but they\'ll never take our freedom! -- Chris Egeberg',
                'Chewie, we\'re home. -- Chris Egeberg',
                'Just keep swimming. -- Chris Egeberg',
                'Frankly, my dear, I don\'t give a damn. -- Chris Egeberg',
                'Chris Egeberg (praise be unto him)'
                'Some magicans can walk on water, Chris Egeberg can swim through land.',
                'When Alexander Bell invented the telephone he had 3 missed calls from Chris Egeberg',
                'Chris Egeberg can win a game of Connect Four in only three moves.',
                'There is no theory of evolution. Just a list of animals Chris Egeberg allows to live.',
                'Chris Egeberg doesn\'t give the wrong answer, you ask the wrong question',
                'Chris Egeberg can kill two stones with one bird'
              ]


module.exports = (robot) ->
	robot.hear /((C|c)hris|(E|e)geberg)/i, (res) ->
	  res.send res.random chrisEgebergReplies
	  
	  
	  
