create JS file **demo.js** and add code 

   `var hello = function(str){
       return str;
};`

add UIWebView => To embed JavaScript in a dummy html file and load that into the UIWebView 

`[self.webView loadHTMLString:@"<script src=\"demo.js\"></script>"
              baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] resourcePath]]];`

Here is the code to make JS call 

    NString *str=@"hi JavaScript";
    NSString *function = [[NSString alloc] initWithFormat: @"hello(%@)", str];
    NSString *result = [webView stringByEvaluatingJavaScriptFromString:function];

Now, there is one important safety tip to make this actually work: The UIWebView must actually be loaded a view. It doesn’t have to be visible, but in order for the WebKit engine to execute the JS, it must be on a view.
