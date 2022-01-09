BindingFlags bindingFlags = BindingFlags.Public |
                            BindingFlags.NonPublic |
                            BindingFlags.Instance |
                            BindingFlags.Static;
            try
            {
                Assembly assembly = Assembly.GetExecutingAssembly();
                foreach (Type type in assembly.GetTypes())
                {
                    //MessageBox.Show(type.FullName);
                        listBox1.Items.Add(type.Name);
                }
                foreach (FieldInfo field in typeof(Test).GetFields(bindingFlags))
                {
                    MessageBox.Show(field.Name);
                }
                this.Text = koikatsu_title_change();
                getsomeone();
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
