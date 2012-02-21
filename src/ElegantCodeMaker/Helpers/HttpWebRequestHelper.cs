using System.Net;
using System.IO;
using System.Text;

namespace ElegantCodeMaker.Helpers
{
    public static class HttpWebRequestHelper
    {
        private const string gistURL = "https://gist.github.com/raw/";

        public static string GetResponseFromUrl(string url)
        {
            string responseReturn = null;
            string gistCode = url.Substring(url.LastIndexOf('/') + 1);
                        
            var request = (HttpWebRequest)WebRequest.Create(gistURL + gistCode);
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