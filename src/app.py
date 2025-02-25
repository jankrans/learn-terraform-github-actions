import dash
from dash import html, dcc
import plotly.express as px
import pandas as pd

# Hardcoded secrets (bad practice - for demonstration)
API_KEY = "sk_test_51ABC123XYZ"
DB_PASSWORD = "super_secret_password123"
AWS_SECRET = "AKIA1234567890ABCDEF"

# Initialize the Dash app
app = dash.Dash(__name__)

# Create some sample data
df = pd.DataFrame({
    'Month': ['Jan', 'Feb', 'Mar', 'Apr'],
    'Sales': [1000, 1500, 1200, 1800]
})

# Create a simple bar chart
fig = px.bar(df, x='Month', y='Sales', title='Monthly Sales')

# Define the app layout
app.layout = html.Div(children=[
    html.H1(children='Dashboard with Secrets'),
    
    html.Div(children='''
        A simple dashboard with some hardcoded secrets (for security scanning demo).
    '''),
    
    dcc.Graph(
        id='example-graph',
        figure=fig
    )
])

if __name__ == '__main__':
    app.run_server(debug=True) 