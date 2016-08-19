sassyDtlpResp = [
    "did you mean DTLP?",
    "did you mean DTLP?",
    "You're living in the past. It's *DTLP*",
    "did you mean DTLP?",
    "did you mean DTLP?",
    "I believe you intended to say *DTLP*",
    "did you mean DTLP?",
    "You disappoint me. It's *DTLP*.",
    "did you mean DTLP?",
    "did you mean DTLP?"
]

module.exports = (robot) ->
    robot.hear /\b(SDLP|ITLP)\b/i, (res) ->
        res.reply res.random sassyDtlpResp
