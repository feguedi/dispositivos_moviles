else if(v.getId() == R.id.buttonMod) calcula('%');

    }//onClick

    public void calcula(char op){
        double result = m1;
        double n = 0;
        int n1 = 0;
        double n2 = 0;
        String cadena = myTextView.getText().toString();
        try{
            m2 = Double.parseDouble(cadena);
            if(op1 == '+') result = m1 + m2;
            else if(op1 == '-') result = m1 - m2;
            else if(op1 == '*') result = m1 * m2;
            else if(op1 == '/') result = m1 / m2;
            else if(op1 == '%'){
                if(m1 < 0 && m1 < m2){
                    n = m1 / m2;
                    n1 = (int)n;
                    n2 = n1 * m2;
                    if(m1 - n2 == 0)
                        result = 0;
                    else
                    result = m1 - n2 + m2;
                } else {
                    result = m1 % m2;
                }
            }
