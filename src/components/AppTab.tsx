import AppBar from '@material-ui/core/AppBar';
import Box from '@material-ui/core/Box';
import Tab from '@material-ui/core/Tab';
import Tabs from '@material-ui/core/Tabs';
import React from 'react';

import { FullDiv } from '../styles/HomeStyles';

function TabPanel(props: any) {
  const { children, value, index, ...other } = props;
  return (
    <FullDiv {...other}>
      {value === index && <Box p={3}>{children}</Box>}
    </FullDiv>
  );
}
type TabEntryType = [string, JSX.Element];
type AppTabsProp = {
  tabs: TabEntryType[];
};

export function AppTabs({ tabs }: AppTabsProp) {
  const [value, setValue] = React.useState(0);
  const handleChange = (event: any, newValue: number) => {
    setValue(newValue);
  };
  return (
    <>
      <AppBar position="static">
        <Tabs value={value} onChange={handleChange}>
          {tabs.map(([label]) => (
            <Tab label={label} />
          ))}
        </Tabs>
      </AppBar>
      {tabs.map(([label, component], index) => (
        <TabPanel value={value} index={index}>
          {component}
        </TabPanel>
      ))}
    </>
  );
}
