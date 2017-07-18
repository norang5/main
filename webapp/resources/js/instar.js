/**
 * 
 */

var token = '1362124742.3ad74ca.6df307b8ac184c2d830f6bd7c2ac5644',
num_photos = 10;

$.ajax({
url: 'https://api.instagram.com/v1/users/self/media/recent',
dataType: 'jsonp',
type: 'GET',
data: {access_token: token, count: num_photos},
success: function(data){
    console.log(data);
    for( x in data.data ){
        $('#rudr_instafeed').append('<li><img src="'+data.data[x].images.low_resolution.url+'"></li>');
    }
},
error: function(data){
    console.log(data);
}
});


/* 
var token = '5716693734.260180d.540d4e29b3384dacbe5d396e55441edb',
hashtag='prdt_name', // hashtag without # symbol
num_photos = 10;

$.ajax({
url: 'https://api.instagram.com/v1/tags/' + hashtag + '/media/recent',
dataType: 'jsonp',
type: 'GET',
data: {access_token: token, count: num_photos},
success: function(data){
	console.log(data);
	for(x in data.data){
		$('ul').append('<li><img src="'+data.data[x].images.standard_resolution.url+'"></li>');  
	}
},
error: function(data){
	console.log(data);
}
}); */
