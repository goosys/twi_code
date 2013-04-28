#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $self = shift;
  $self->render('main');
};

post '/' => sub {
  my $self = shift;
  $self->redirect_to('/');
};

app->start;
__DATA__

@@ main.html.ep
% layout 'default';
% title 'main page';
<section id="sendform">
<p>hello,hello</p>
<form action="/" method="post">
  <label for="titleinput">title</label>
  <input type="text" name="title" placeholder="title" id="titleinput"/>
  <label for="textarea">memo code</label>
  <textarea name="code" placeholder="input your beautiful code" id="texarea"></textarea>
</form>
</section>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title><%= title %></title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <%= include 'styles.css' =%>
</head>
<body>
<div class="container">
<%= content %>
</div>
</body>
</html>

@@ layouts/form.html.ep


@@ styles.css.html.ep
  %# Yahoo UI Font Size
  %# ----------------
  %# |  px  |   %   |
  %# |--------------|
  %# |  10  |  77   |
  %# |  11  |  85   |
  %# |  12  |  93   |
  %# |  13  | 100   |
  %# |  14  | 108   |
  %# |  15  | 116   |
  %# |  16  | 123.1 |
  %# |  17  | 131   |
  %# |  18  | 138.5 |
  %# ----------------
  %= stylesheet 'http://yui.yahooapis.com/3.8.1/build/cssreset/cssreset-min.css'
  %= stylesheet 'http://yui.yahooapis.com/3.8.1/build/cssfonts/cssfonts-min.css'
  %= stylesheet 'css/bootstrap.min.css'
  %= stylesheet begin
  /* styles.css.html.ep 共通CSS */
  body {
    margin: 20px;
  }
  h1 {
    
  }
  label { 
    display:none;
  }
  textarea {
    width:100%;
  }
  %= end
