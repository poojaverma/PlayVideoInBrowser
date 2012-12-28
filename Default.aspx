<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Playing Video in browser
        <br />
        <br />
        <div id="mediaplayer">
        </div>

        <script type="text/javascript" src="js/jwplayer.js"></script>

        <script type="text/javascript">
            window.onload = test('Images/mib.mp4');
            function getvideo(value) {
                jwplayer("mediaplayer").setup({
                    flashplayer: "Images/player.swf",
                    file: value,
                    autostart: 'true',
                    image: "Images/preview.jpg",
                    height: '400px',
                    width: '650px'

                });
            }
            function test(value) {
                getvideo(value);
            }
            
        </script>

    </div>
    </form>
</body>
</html>
