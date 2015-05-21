#region Imports
using System;
using System.Drawing;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
#endregion

namespace DAL
{
    class Repository
    {
        #region Declarations

        private static Repository m_instance;
        private static payrollEntities CWEntities;
        // Lock synchronization object
        //private static object syncLock = new object();
        private static readonly object syncLock = new object();

        #endregion

        #region Properties

        /// <summary>
        /// Returns the one and only Repository
        /// </summary>
        public static Repository Current
        {
            get
            {
                if (m_instance == null)
                {
                    lock (syncLock)
                    {
                        if (m_instance == null)
                        {
                            m_instance = new Repository();
                        }
                    }
                }

                return m_instance;
            }
        }

        /// <summary>
        /// Object context to get entity objects application void
        /// </summary>
        public payrollEntities ObjectContext
        {
            get
            {
                if (CWEntities != null)
                {
                    return CWEntities;
                }
                else
                {
                    CWEntities = new payrollEntities();

                    return CWEntities;
                }
            }
        }

        #endregion
    }
}