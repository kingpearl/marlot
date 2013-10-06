/**
 * Pearl Migration
 * Copyright(c) 2012 King Pearl LLC
 * MIT Licensed
 */
var mongoose.connect('localhost:27017/test?auto_reconnect'),
mongo = mongoose.connection,
Redis = require('redis')
// , redis = Redis.createClient()

exports.up = function(next) { next() }

exports.down = function(next) { next() }