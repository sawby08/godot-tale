extends Node

var selection = 0
var subselection = 0
var state = "buttons"
var turn = "player"

var encounter = load('res://encounters/' + 'test' + '/encounter.tres')

var hp = encounter.player.hp
var max = encounter.player.max
