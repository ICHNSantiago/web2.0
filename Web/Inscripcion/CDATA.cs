using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Schema;
using System.Xml.Serialization;
using System.Xml;

namespace Web.Inscripcion
{
    public class CDATA : IXmlSerializable
    {
        private string _value;

        /// <summary>
        /// Initializes a new instance of the <see cref="CDATA"/> class.
        /// </summary>
        public CDATA()
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="CDATA"/> class.
        /// </summary>
        /// <param name="value">string.</param>
        public CDATA(string value)
        {
            _value = value;
        }

        /// <summary>
        /// Variable.
        /// </summary>
        public string Value
        {
            get { return _value; }
        }

        /// <summary>
        /// Metodo.
        /// </summary>
        /// <returns>XmlSchema.</returns>
        XmlSchema IXmlSerializable.GetSchema()
        {
            return null;
        }

        /// <summary>
        /// metodo.
        /// </summary>
        /// <param name="reader">XmlReader.</param>
        void IXmlSerializable.ReadXml(XmlReader reader)
        {
            _value = reader.ReadElementContentAsString();
        }

        /// <summary>
        /// metodo.
        /// </summary>
        /// <param name="writer">XmlWriter.</param>
        void IXmlSerializable.WriteXml(XmlWriter writer)
        {
            writer.WriteCData(_value);
        }

        /// <summary>
        /// metodo.
        /// </summary>
        /// <returns>string</returns>
        public override string ToString()
        {
            return Value;
        }

        public static implicit operator string(CDATA element)
        {
            return (element == null) ? null : element.Value;
        }

        public static implicit operator CDATA(string text)
        {
            return new CDATA(text);
        }
    }
}