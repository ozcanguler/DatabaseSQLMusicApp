using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseSQLMusicApp
{
   internal class Track
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Number { get; set; }
        public string Video_URL { get; set; }
        public string Lyrics { get; set; }
    }
}
