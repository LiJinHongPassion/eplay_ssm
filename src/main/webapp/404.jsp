<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0062)http://www.17sucai.com/preview/952947/2018-01-02/404/demo.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style id="stndz-style"></style>

    <title>404页未找到</title>

    <style>
        html,body {
            margin:0;
            padding:0;
        }
        canvas {
            display:block;
            horizontalScrollPolicy:"off";
            verticalScrollPolicy:"off";
        }
    </style>
    <script type="text/javascript" async="" src="<% request.getContextPath(); %>/404/mixpanel-2-latest.min.js.下载"></script></head>
<body>

<div></div>

<script>
    var canvas = document.createElement('canvas');
    var height = canvas.height = window.innerHeight;
    var width = canvas.width = window.innerWidth;
    var ctx = canvas.getContext('2d');
    document.body.appendChild(canvas);

    function random(min,max)
    {
        return Math.random()*(max-min+1)+min;
    }

    function range_map(value,in_min, in_max, out_min, out_max) {
        return (value - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
    }

    var word_arr = [];
    var txt_min_size = 5;
    var txt_max_size = 25;
    var keypress = false;
    var acclerate = 2;
    for (var i = 0; i < 25; i++) {
        word_arr.push({
            x : random(0,width),
            y : random(0,height),
            text : '404',
            size : random(txt_min_size,txt_max_size)
        });

        word_arr.push({
            x : random(0,width),
            y : random(0,height),
            text : 'page',
            size : random(txt_min_size,txt_max_size)
        });


        word_arr.push({
            x : random(0,width),
            y : random(0,height),
            text : 'not found',
            size : random(txt_min_size,txt_max_size)
        });

        word_arr.push({
            x : random(0,width),
            y : random(0,height),
            text : '404',
            size : Math.floor(random(txt_min_size,txt_max_size))
        });
    }

    function render()
    {
        ctx.fillStyle = "rgba(0,0,0,1)";
        ctx.fillRect(0,0,width,height);

        ctx.fillStyle = "#fff";
        for (var i = 0; i < word_arr.length; i++) {
            ctx.font = word_arr[i].size+"px sans-serif";
            var w = ctx.measureText(word_arr[i].text);
            ctx.fillText(word_arr[i].text,word_arr[i].x,word_arr[i].y);

            if(keypress)
            {
                word_arr[i].x += range_map(word_arr[i].size,txt_min_size,txt_max_size,2,4) * acclerate;
            }
            else {
                word_arr[i].x += range_map(word_arr[i].size,txt_min_size,txt_max_size,2,3);
            }

            if(word_arr[i].x >= width)
            {
                word_arr[i].x = -w.width*2;
                word_arr[i].y = random(0,height);
                word_arr[i].size =  Math.floor(random(txt_min_size,txt_max_size));

            }
        }

        ctx.fill();

        requestAnimationFrame(render);
    }

    render();

    window.addEventListener('keydown',function(){
        keypress = true;
    },true);
    window.addEventListener('keyup',function(){
        keypress = false;
    },true);</script>
<%--<canvas height="708" width="1535">--%>

</canvas>



</body></html>