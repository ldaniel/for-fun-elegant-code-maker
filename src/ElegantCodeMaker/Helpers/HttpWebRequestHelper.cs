using System.Net;
using System.IO;
using System.Text;

namespace ElegantCodeMaker.Helpers
{
    public static class HttpWebRequestHelper
    {
        public static string GetResponseFromUrl(string url)
        {
            string responseReturn = null;
            url = url.Replace("https://gist.github.com/", "https://gist.github.com/raw/");
                        
            var request = (HttpWebRequest)WebRequest.Create(url);
            request.MaximumAutomaticRedirections = 4;
            request.MaximumResponseHeadersLength = 4;
            request.Credentials = CredentialCache.DefaultCredentials;

            using (var response = (HttpWebResponse)request.GetResponse())
            {
                Stream receiveStream = response.GetResponseStream();
                if (receiveStream != null)
                {
                    using (var readStream = new StreamReader(receiveStream, Encoding.UTF8))
                    {
                        responseReturn = readStream.ReadToEnd();
                    }
                }
            }

            return responseReturn;
        }
    }
}